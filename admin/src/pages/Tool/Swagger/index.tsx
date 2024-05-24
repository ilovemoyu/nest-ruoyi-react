import type React from 'react'
import { useEffect } from 'react'

const CacheInfo: React.FC = () => {
  useEffect(() => {
    const frame = document.getElementById('bdIframe')
    if (frame) {
      const deviceWidth = document.documentElement.clientWidth
      const deviceHeight = document.documentElement.clientHeight
      frame.style.width = `${Number(deviceWidth) - 260}px`
      frame.style.height = `${Number(deviceHeight) - 120}px`
    }
  })

  return (
    <div style={{}}>
      <iframe
        title={'swagger'}
        style={{ width: '100%', border: '0px', height: '100%' }}
        src={'/api/swagger-ui'}
        id='bdIframe'
      />
    </div>
  )
}

export default CacheInfo
